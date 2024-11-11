import 'package:booking_app/presentation/Details/widgets/booking_section.dart';
import 'package:booking_app/presentation/booking_time/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  bool showCalendar = false;
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final phoneController = TextEditingController();

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        showCalendar = false;
      });
    }
  }

  void _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'احجز موعدك',
          style: TextStyle(
            fontFamily: "Almarai",
            fontWeight: FontWeight.w700,
            fontSize: 19,
            color: Color(
              0xFF1E2742,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Color(
                0xFF1E2742,
              ),
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const Text('الموعد',
                  style: TextStyle(
                    fontFamily: "Almarai",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(
                      0xFF1E2742,
                    ),
                  ),
                  textDirection: TextDirection.rtl),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                        readOnly: true,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: selectedDate != null
                              ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                              : 'اختر التاريخ',
                          hintStyle: const TextStyle(
                              fontSize: 16,
                              fontFamily: "Almarai",
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF8A8D97)),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0x40161C30)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  showCalendar = !showCalendar;
                                });
                              },
                              child: const Icon(
                                Icons.calendar_today,
                                size: 20,
                                color: Color(0xFFA2A4AC),
                              )),
                          alignLabelWithHint: true,
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        hintText: selectedTime != null
                            ? "${selectedTime!.hour}:${selectedTime!.minute}"
                            : 'اختر الوقت',
                        hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Almarai",
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8A8D97)),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0x40161C30)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 12),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              _selectTime(context);
                            },
                            child: const Icon(
                              Icons.access_time,
                              size: 20,
                              color: Color(0xFFA2A4AC),
                            )),
                        alignLabelWithHint: true,
                      ),
                    ),
                  ),
                ],
              ),
              if (showCalendar)
                Container(
                  height: 250,
                  child: CalendarDatePicker(
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2101),
                    onDateChanged: (date) {
                      setState(() {
                        selectedDate = date;
                        showCalendar = false;
                      });
                    },
                  ),
                ),
              const SizedBox(height: 16),
              const Text(
                'بيانات صاحب الحجز',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Almarai",
                  color: Color(0xFF1E2742),
                ),
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: nameController,
                label: "الاسم بالكامل*",
              ),
              const SizedBox(height: 12),
              CustomTextField(
                controller: ageController,
                label: "السن*",
              ),
              const SizedBox(height: 12),
              CustomTextField(
                controller: phoneController,
                label: "رقم الهاتف*",
              ),
              const SizedBox(height: 32),
              const Text(
                "صورة السند*",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Almarai",
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1E2742),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color(0x0D6B779A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(
                    Icons.image_outlined,
                    size: 50,
                    color: Color(0xFF979797),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'اضغط هنا لاختيار الصورة',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: "Almarai",
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF0DA1CD),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              const BookingSection(),
            ],
          ),
        ),
      ),
    );
  }
}
