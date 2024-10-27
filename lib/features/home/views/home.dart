import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            GradeListTile(),
            SearchTextField(),
            SizedBox(
              height: 20,
            ),
            RowTitle(),
            HomeworkContainer()
          ],
        ),
      ),
    );
  }
}

class RowTitle extends StatelessWidget {
  const RowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Next class",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Spacer(),
        Text(
          "See all",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.shade100,
          prefixIcon: const Icon(
            Icons.search,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ),
    );
  }
}

class GradeListTile extends StatelessWidget {
  const GradeListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Text("Erica Hawkins"),
      subtitle: Text(
        "6th grade",
        style: TextStyle(color: Colors.grey.shade400),
      ),
      trailing: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: const Icon(Icons.alarm),
            ),
            Positioned(
              top: 12,
              right: 8,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
          ],
        ),
      ),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage("assets/logo.png"),
          ),
          //borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}

class HomeworkContainer extends StatefulWidget {
  const HomeworkContainer({
    super.key,
  });

  @override
  State<HomeworkContainer> createState() => _HomeworkContainerState();
}

bool homework = false;

class _HomeworkContainerState extends State<HomeworkContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.calendar_month_outlined,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 119,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Homework"),
                      const Spacer(),
                      Checkbox(
                          value: homework,
                          onChanged: (val) {
                            setState(() {
                              homework = val ?? false;
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Basic mathematics",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              "Today, 08:15am",
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text("Jane Cooper "),
              leading: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage("assets/logo.png"),
                  ),
                  //borderRadius: BorderRadius.circular(15)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
