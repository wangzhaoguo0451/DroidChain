.class public Lcom/wandoujia/base/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static DAY:J

.field private static DAYS_OF_WEEK:I

.field public static HOUR:J

.field public static MINUTE:J

.field public static MIN_MICROSECOND_LONG:J

.field public static MIN_MILLISECOND_LONG:J

.field public static MIN_SECOND_LONG:J

.field public static MONTH:J

.field private static MONTHS_OF_YEAR:I

.field public static WEEK:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_SECOND_LONG:J

    .line 14
    const-wide v0, 0xe8d4a51000L

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MILLISECOND_LONG:J

    .line 15
    const-wide v0, 0x38d7ea4c68000L

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MICROSECOND_LONG:J

    .line 16
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MINUTE:J

    .line 17
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->HOUR:J

    .line 18
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->DAY:J

    .line 19
    const-wide/16 v0, 0x7

    sget-wide v2, Lcom/wandoujia/base/utils/DateUtil;->DAY:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->WEEK:J

    .line 20
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/wandoujia/base/utils/DateUtil;->DAY:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MONTH:J

    .line 21
    const/16 v0, 0xc

    sput v0, Lcom/wandoujia/base/utils/DateUtil;->MONTHS_OF_YEAR:I

    .line 22
    const/4 v0, 0x7

    sput v0, Lcom/wandoujia/base/utils/DateUtil;->DAYS_OF_WEEK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLongIsMillisecond(J)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 62
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->isMillisecond(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-wide p0

    .line 65
    :cond_0
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->isMicrosecond(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    div-long/2addr p0, v2

    goto :goto_0

    .line 68
    :cond_1
    mul-long/2addr p0, v2

    goto :goto_0
.end method

.method public static checkLongIsSecond(J)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x3e8

    .line 50
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->isSecond(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-wide p0

    .line 53
    :cond_0
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->isMillisecond(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    div-long/2addr p0, v2

    goto :goto_0

    .line 56
    :cond_1
    mul-long/2addr p0, v2

    goto :goto_0
.end method

.method public static distanceToToday(J)I
    .locals 4
    .parameter

    .prologue
    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 108
    invoke-static {v0}, Lcom/wandoujia/base/utils/DateUtil;->trimCalendar(Ljava/util/Calendar;)V

    .line 109
    invoke-static {v2}, Lcom/wandoujia/base/utils/DateUtil;->trimCalendar(Ljava/util/Calendar;)V

    .line 111
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 112
    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static distanceToTodayString(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->distanceToToday(J)I

    move-result v0

    .line 117
    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$string;->today:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 119
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 120
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$string;->yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_1
    if-gez v0, :cond_2

    .line 122
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->days_ago:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->days_later:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatDistanceToToday(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/wandoujia/base/utils/DateUtil;->formatDistanceToToday(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDistanceToToday(JZ)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-static {v0}, Lcom/wandoujia/base/utils/DateUtil;->trimCalendar(Ljava/util/Calendar;)V

    .line 147
    invoke-static {v2}, Lcom/wandoujia/base/utils/DateUtil;->trimCalendar(Ljava/util/Calendar;)V

    .line 149
    invoke-static {p0, p1}, Lcom/wandoujia/base/utils/DateUtil;->distanceToToday(J)I

    move-result v1

    .line 150
    if-lez v1, :cond_0

    .line 151
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/wandoujia/base/R$string;->days_later:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 153
    :cond_0
    if-nez v1, :cond_1

    .line 154
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$string;->today:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 156
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$string;->yesterday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    invoke-static {v2, v0}, Lcom/wandoujia/base/utils/DateUtil;->getMonthDistance(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v3

    .line 159
    if-nez v3, :cond_6

    .line 160
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sget v4, Lcom/wandoujia/base/utils/DateUtil;->DAYS_OF_WEEK:I

    if-ge v3, v4, :cond_4

    .line 161
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 162
    invoke-static {v2}, Lcom/wandoujia/base/utils/DateUtil;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/wandoujia/base/R$string;->last_week_prefix:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/wandoujia/base/utils/DateUtil;->getWeekString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/wandoujia/base/utils/DateUtil;->DAYS_OF_WEEK:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->one_week:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->ago:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->two_weeks:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->ago:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 175
    :cond_6
    if-eqz p2, :cond_7

    .line 176
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->one_month:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/wandoujia/base/R$string;->ago:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static getMonthDistance(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 266
    :goto_0
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v2, v3, v2

    .line 267
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 268
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 269
    sget v5, Lcom/wandoujia/base/utils/DateUtil;->MONTHS_OF_YEAR:I

    mul-int/2addr v2, v5

    add-int/2addr v2, v3

    if-ltz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_0
.end method

.method public static getMonthStringChinese(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 217
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wandoujia/base/R$array;->month_array:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 219
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 220
    if-ltz v1, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 221
    aget-object v0, v0, v1

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getMonthStringEng(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 228
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 254
    const-string v0, ""

    :goto_0
    return-object v0

    .line 230
    :pswitch_0
    sget v1, Lcom/wandoujia/base/R$string;->january:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 232
    :pswitch_1
    sget v1, Lcom/wandoujia/base/R$string;->february:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_2
    sget v1, Lcom/wandoujia/base/R$string;->march:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :pswitch_3
    sget v1, Lcom/wandoujia/base/R$string;->april:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_4
    sget v1, Lcom/wandoujia/base/R$string;->may:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_5
    sget v1, Lcom/wandoujia/base/R$string;->june:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_6
    sget v1, Lcom/wandoujia/base/R$string;->july:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_7
    sget v1, Lcom/wandoujia/base/R$string;->august:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :pswitch_8
    sget v1, Lcom/wandoujia/base/R$string;->september:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_9
    sget v1, Lcom/wandoujia/base/R$string;->october:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_a
    sget v1, Lcom/wandoujia/base/R$string;->november:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_b
    sget v1, Lcom/wandoujia/base/R$string;->december:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private static getWeekString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 195
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 212
    const-string v0, ""

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    sget v1, Lcom/wandoujia/base/R$string;->sunday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :pswitch_1
    sget v1, Lcom/wandoujia/base/R$string;->monday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 202
    :pswitch_2
    sget v1, Lcom/wandoujia/base/R$string;->tuesday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 204
    :pswitch_3
    sget v1, Lcom/wandoujia/base/R$string;->wednesday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :pswitch_4
    sget v1, Lcom/wandoujia/base/R$string;->thursday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_5
    sget v1, Lcom/wandoujia/base/R$string;->friday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :pswitch_6
    sget v1, Lcom/wandoujia/base/R$string;->saturday:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isCurrentYear(J)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 273
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 275
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 278
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 279
    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMicrosecond(J)Z
    .locals 2
    .parameter

    .prologue
    .line 42
    sget-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MICROSECOND_LONG:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMillisecond(J)Z
    .locals 2
    .parameter

    .prologue
    .line 33
    sget-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MILLISECOND_LONG:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MICROSECOND_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSecond(J)Z
    .locals 2
    .parameter

    .prologue
    .line 25
    sget-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_SECOND_LONG:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/wandoujia/base/utils/DateUtil;->MIN_MILLISECOND_LONG:J

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static timeStamp2Date(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 92
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timeStamp2Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, v0}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static timeStamp2Date(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/wandoujia/base/utils/DateUtil;->timeStamp2Date(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimCalendar(Ljava/util/Calendar;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 187
    const/16 v0, 0x9

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 188
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 189
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 191
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 192
    return-void
.end method
