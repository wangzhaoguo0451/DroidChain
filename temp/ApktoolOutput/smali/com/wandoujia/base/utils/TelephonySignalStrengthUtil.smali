.class public Lcom/wandoujia/base/utils/TelephonySignalStrengthUtil;
.super Ljava/lang/Object;
.source "TelephonySignalStrengthUtil.java"


# static fields
.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NONE:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field public static final SIGNAL_STRENGTH_UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCdmaAsuLevel(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v5, -0x5a

    const/16 v4, -0x64

    .line 102
    const/16 v0, -0x4b

    if-lt p0, v0, :cond_1

    .line 103
    const/16 v0, 0x10

    .line 117
    :goto_0
    if-lt p1, v5, :cond_6

    .line 118
    const/16 v1, 0x10

    .line 131
    :cond_0
    :goto_1
    if-ge v0, v1, :cond_a

    .line 132
    :goto_2
    return v0

    .line 104
    :cond_1
    const/16 v0, -0x52

    if-lt p0, v0, :cond_2

    .line 105
    const/16 v0, 0x8

    goto :goto_0

    .line 106
    :cond_2
    if-lt p0, v5, :cond_3

    move v0, v1

    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/16 v0, -0x5f

    if-lt p0, v0, :cond_4

    move v0, v2

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    if-lt p0, v4, :cond_5

    move v0, v3

    .line 111
    goto :goto_0

    .line 113
    :cond_5
    const/16 v0, 0x63

    goto :goto_0

    .line 119
    :cond_6
    if-lt p1, v4, :cond_7

    .line 120
    const/16 v1, 0x8

    goto :goto_1

    .line 121
    :cond_7
    const/16 v4, -0x73

    if-ge p1, v4, :cond_0

    .line 123
    const/16 v1, -0x82

    if-lt p1, v1, :cond_8

    move v1, v2

    .line 124
    goto :goto_1

    .line 125
    :cond_8
    const/16 v1, -0x96

    if-lt p1, v1, :cond_9

    move v1, v3

    .line 126
    goto :goto_1

    .line 128
    :cond_9
    const/16 v1, 0x63

    goto :goto_1

    :cond_a
    move v0, v1

    .line 132
    goto :goto_2
.end method

.method public static getCdmaLevel(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 65
    const/16 v0, -0x4b

    if-lt p0, v0, :cond_0

    move v0, v1

    .line 78
    :goto_0
    const/16 v6, -0x5a

    if-lt p1, v6, :cond_4

    .line 90
    :goto_1
    if-ge v0, v1, :cond_8

    .line 91
    :goto_2
    return v0

    .line 67
    :cond_0
    const/16 v0, -0x55

    if-lt p0, v0, :cond_1

    move v0, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const/16 v0, -0x5f

    if-lt p0, v0, :cond_2

    move v0, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/16 v0, -0x64

    if-lt p0, v0, :cond_3

    move v0, v4

    .line 72
    goto :goto_0

    :cond_3
    move v0, v5

    .line 74
    goto :goto_0

    .line 80
    :cond_4
    const/16 v1, -0x6e

    if-lt p1, v1, :cond_5

    move v1, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    const/16 v1, -0x82

    if-lt p1, v1, :cond_6

    move v1, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_6
    const/16 v1, -0x96

    if-lt p1, v1, :cond_7

    move v1, v4

    .line 85
    goto :goto_1

    :cond_7
    move v1, v5

    .line 87
    goto :goto_1

    :cond_8
    move v0, v1

    .line 91
    goto :goto_2
.end method

.method public static getEvdoAsuLevel(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 179
    const/16 v0, -0x41

    if-lt p0, v0, :cond_0

    move v0, v1

    .line 193
    :goto_0
    const/4 v6, 0x7

    if-lt p1, v6, :cond_5

    .line 207
    :goto_1
    if-ge v0, v1, :cond_a

    .line 208
    :goto_2
    return v0

    .line 181
    :cond_0
    const/16 v0, -0x4b

    if-lt p0, v0, :cond_1

    move v0, v2

    .line 182
    goto :goto_0

    .line 183
    :cond_1
    const/16 v0, -0x55

    if-lt p0, v0, :cond_2

    move v0, v3

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    const/16 v0, -0x5f

    if-lt p0, v0, :cond_3

    move v0, v4

    .line 186
    goto :goto_0

    .line 187
    :cond_3
    const/16 v0, -0x69

    if-lt p0, v0, :cond_4

    move v0, v5

    .line 188
    goto :goto_0

    .line 190
    :cond_4
    const/16 v0, 0x63

    goto :goto_0

    .line 195
    :cond_5
    const/4 v1, 0x6

    if-lt p1, v1, :cond_6

    move v1, v2

    .line 196
    goto :goto_1

    .line 197
    :cond_6
    const/4 v1, 0x5

    if-lt p1, v1, :cond_7

    move v1, v3

    .line 198
    goto :goto_1

    .line 199
    :cond_7
    const/4 v1, 0x3

    if-lt p1, v1, :cond_8

    move v1, v4

    .line 200
    goto :goto_1

    .line 201
    :cond_8
    if-lez p1, :cond_9

    move v1, v5

    .line 202
    goto :goto_1

    .line 204
    :cond_9
    const/16 v1, 0x63

    goto :goto_1

    :cond_a
    move v0, v1

    .line 208
    goto :goto_2
.end method

.method public static getEvdoLevel(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x3

    .line 143
    const/16 v0, -0x41

    if-lt p0, v0, :cond_0

    move v0, v1

    .line 155
    :goto_0
    const/4 v6, 0x7

    if-lt p1, v6, :cond_4

    .line 167
    :goto_1
    if-ge v0, v1, :cond_8

    .line 168
    :goto_2
    return v0

    .line 145
    :cond_0
    const/16 v0, -0x4b

    if-lt p0, v0, :cond_1

    move v0, v2

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const/16 v0, -0x5a

    if-lt p0, v0, :cond_2

    move v0, v3

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    const/16 v0, -0x69

    if-lt p0, v0, :cond_3

    move v0, v4

    .line 150
    goto :goto_0

    :cond_3
    move v0, v5

    .line 152
    goto :goto_0

    .line 157
    :cond_4
    const/4 v1, 0x5

    if-lt p1, v1, :cond_5

    move v1, v2

    .line 158
    goto :goto_1

    .line 159
    :cond_5
    if-lt p1, v2, :cond_6

    move v1, v3

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    if-lez p1, :cond_7

    move v1, v4

    .line 162
    goto :goto_1

    :cond_7
    move v1, v5

    .line 164
    goto :goto_1

    :cond_8
    move v0, v1

    .line 168
    goto :goto_2
.end method

.method public static getGsmDbm(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 20
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    move v1, v0

    .line 21
    :goto_0
    if-eq v1, v0, :cond_0

    .line 22
    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    .line 26
    :cond_0
    return v0

    :cond_1
    move v1, p0

    .line 20
    goto :goto_0
.end method

.method public static getGsmLevel(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 40
    const/16 v1, 0x63

    if-ne p0, v1, :cond_1

    .line 42
    const/4 v0, -0x1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    if-gt p0, v0, :cond_2

    .line 44
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_2
    const/16 v1, 0xc

    if-lt p0, v1, :cond_3

    .line 46
    const/4 v0, 0x4

    goto :goto_0

    .line 47
    :cond_3
    const/16 v1, 0x8

    if-lt p0, v1, :cond_4

    .line 48
    const/4 v0, 0x3

    goto :goto_0

    .line 49
    :cond_4
    const/4 v1, 0x5

    if-ge p0, v1, :cond_0

    .line 52
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasService(Landroid/telephony/ServiceState;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 212
    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    const/4 v0, 0x1

    .line 222
    :cond_0
    :pswitch_0
    return v0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
