import 'package:flutter/material.dart';
import 'package:maps/screens/common_widgets/search_text_field.dart';
import 'package:maps/screens/feed/feed_card.dart';
import 'package:maps/screens/feed/feed_provider.dart';
import 'package:maps/screens/feed_details/feed_details.dart';
import 'package:provider/provider.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var feedProvider = context.read<FeedProvider>();
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
          child: SearchTextField(
              controller: TextEditingController(text: feedProvider.searchText),
              focused: feedProvider.searchFocused,
              onFocusChange: feedProvider.changeSearchFocused,
              onTextChange: feedProvider.changeSearchText,
              onResetText: feedProvider.resetText)),
      Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: feedProvider.feeds.length,
              itemBuilder: (_, index) {
                return FeedCard(
                    viewModel: FeedCardViewModel(
                        date: '03.04.2021 15:37',
                        title: 'Екатерина Ганелина',
                        description:
                            'В московских школах искусств открылась приемная кампания. В течение двух месяцев учреждения будут набирать учеников по самым разным направлениям, среди которых музыкальное, театральное, хореографическое и художественное. Попробовать свои силы может любой ребенок. Заявления в школы искусств принимают на обучение по профессиональным и общеразвивающим программам. На предпрофессиональных программах одаренных детей с раннего возраста готовят к творческой карьере, а общеразвивающие ориентированы на эстетическое воспитание более широкого круга детей и взрослых. Подать заявление можно на портале mos.ru. Для желающих поступить организуют творческие испытания, на которых приемная комиссия оценивает данные ребенка. В музыкальных школах, например, проверяют чувство ритма, память, артикуляцию и музыкальный слух. Для этого, как правило, ребенка просят исполнить любую детскую песню и прохлопать ритм. Подобные испытания проводятся и в остальных школах. В столице работает 151 учреждение трех ступеней образования: школы искусств, колледжи и высшие учебные заведения. Они есть в каждом районе города, в них обучаются около 80 тысяч детей. Школа искусств — первая ступень в системе подготовки творческих кадров. Это полноценное учебное заведение, которое ребенок посещает после обычной школы. Продолжительность обучения варьируется от трех до девяти лет, дети осваивают разные предметы и дисциплины. Как и в школе, уроки нельзя прогуливать, нужно сдавать зачеты и экзамены, осваивать академическую программу. По окончании обучения выпускнику выдают свидетельство. В московских школах искусств работают 6,4 тысячи педагогов. Все они имеют профильное творческое образование. Среди них — заслуженные артисты, заслуженные деятели искусств, заслуженные работники культуры и народные артисты России. В педагогическом составе также есть почетные работники культуры Москвы, доктора и кандидаты искусствоведения. Чтобы обучение было максимально комфортным и интересным для современных детей, подростков и их родителей, разработали программу «Искусство — детям». В ее рамках ремонтируют здания и помещения в соответствии с единым фирменным стилем, благоустраивают прилегающие к школам территории, обновляют мебель, закупают оборудование и новые музыкальные инструменты. Благодаря программе многие школы искусств впервые получили собственные здания.',
                        subtitle:
                            'Известный российский концертмейстер, постоянный концертмейстер народной артистки России Хиблы Герзмава.',
                        imageUrl:
                            'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                        imageLabel: 'Интервью',
                        comments: [
                          Comment(
                              authorImageUrl:
                                  'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                              date: '20.05.2023 15:43',
                              name: 'Николай Романов',
                              comment:
                                  'Приемная кампания в школы искусств — это важное событие для всех, кто хочет развивать свои таланты и получить качественное образование. Благодаря этой кампании мы можем увидеть, насколько талантливы наши дети и какие возможности им предоставляются.',
                              likesCount: '5',
                              replies: [
                                Reply(
                                    authorImageUrl:
                                        'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                                    date: '20.05.2023 15:43',
                                    name: 'Владимир Онегин',
                                    comment:
                                        'Николай, полностью солидарен с вами, это очень важное событие для наших деток.'),
                                Reply(
                                    authorImageUrl:
                                        'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                                    date: '20.05.2023 15:58',
                                    name: 'Сергей Иванов ',
                                    comment:
                                        'Николай, а вы в какие школы искусств планируете подавать?')
                              ]),
                          Comment(
                              authorImageUrl:
                                  'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                              date: '20.05.2023 15:43',
                              name: 'Валентина Ивановна',
                              comment:
                                  'Сколько времени длится обучение в школе искусств?',
                              likesCount: '0',
                              replies: [])
                        ],
                        likesCount: '5',
                        additionalReading: [
                          AdditionalReading(
                              imageUrl:
                                  'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                              autorName: 'Екатерина Ганелина',
                              description:
                                  'Известный российский концертмейстер, постоянный концертмейстер народной артистки России Хиблы Герзмава'),
                          AdditionalReading(
                              imageUrl:
                                  'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                              autorName: 'Наталья Осипова',
                              description:
                                  'Лауреат международных и всероссийских конкурсов, руководитель Современной духовой школы, член городского экспертного совета, преподаватель Детской музыкальной школы им. Н.С. Голованова, лауреат I степени Городского конкурса профессионального мастерства «Московские мастера» по профессии «Преподаватель в сфере искусства»'),
                          AdditionalReading(
                              imageUrl:
                                  'https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg',
                              autorName: 'Екатерина Ганелина',
                              description:
                                  'Известный российский концертмейстер, постоянный концертмейстер народной артистки России Хиблы Герзмава')
                        ],
                        onTap: () {
                          var details = FeedDetailsScreen(
                              title: "333",
                              subTitle: "2222",
                              url:
                                  "https://mobimg.b-cdn.net/v3/fetch/97/971c4fa26dc80fe5079a43a788e18888.jpeg",
                              date: '22.33..22');
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => details));
                        }));
              }))
    ]);
  }
}
