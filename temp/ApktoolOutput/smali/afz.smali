.class public final Lafz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Ljava/util/HashMap;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lafz;->a:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lafz;->b:Ljava/util/HashMap;

    .line 66
    const/4 v0, -0x1

    sput v0, Lafz;->c:I

    .line 67
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "xx-small"

    const/high16 v2, 0x4130

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "x-small"

    const/high16 v2, 0x4140

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "small"

    const/high16 v2, 0x4150

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "medium"

    const/high16 v2, 0x4170

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "large"

    const/high16 v2, 0x4180

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "x-large"

    const/high16 v2, 0x4198

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "xx-large"

    const/high16 v2, 0x41a0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "white_content"

    const-string v2, "mini_bg_white"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "gray_content"

    const-string v2, "mini_bg_gray"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "detail"

    const-string v2, "mini_icon_info"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "tip"

    const-string v2, "mini_icon_info"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "header_line"

    const-string v2, "mini_header_line"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "mini_logo"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "footer_line"

    const-string v2, "mini_footer_line"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "sure"

    const-string v2, "mini_icon_sure"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "page_title"

    const-string v2, "mini_card_title_bg"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "middle_line"

    const-string v2, "mini_dash_line_bg"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "result_ok"

    const-string v2, "mini_icon_ok"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "normal"

    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "hover"

    const-string v2, "mini_btn_comfirm_hover"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "disable"

    const-string v2, "mini_btn_disable"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    const-string v1, "login_disable"

    .line 98
    const-string v2, "mini_btn_confirm_bg"

    invoke-static {v2}, Lg;->e(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2
    .parameter

    .prologue
    .line 613
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 614
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 615
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {p0}, Ld;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v0, v0, Lade;->a:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    const-string v1, "msp_text_color_gray"

    invoke-static {v1}, Lg;->c(Ljava/lang/String;)I

    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    const-string v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x3

    new-array v2, v0, [I

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_1

    .line 109
    aget v0, v2, v1

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    .line 342
    :cond_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 344
    const-string v1, "mini_win_default_height"

    invoke-static {v1}, Lg;->d(Ljava/lang/String;)I

    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 345
    int-to-float v0, v0

    invoke-static {p0}, Lafz;->g(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 347
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    .line 348
    invoke-static {p1}, Lafz;->b(Landroid/app/Activity;)F

    move-result v1

    .line 347
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 523
    .line 524
    if-eqz p0, :cond_3

    array-length v0, p0

    if-lez v0, :cond_3

    .line 525
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 527
    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    .line 553
    :goto_0
    array-length v6, p0

    if-lt v1, v6, :cond_0

    .line 559
    if-nez v3, :cond_3

    .line 560
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    .line 564
    :goto_1
    return-object v0

    .line 529
    :cond_0
    aget-object v6, p0, v1

    .line 530
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 534
    const-string v3, "rgb"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    move v3, v2

    .line 553
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :pswitch_0
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v2

    .line 540
    invoke-static {v6}, Lafz;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    .line 541
    goto :goto_3

    .line 543
    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v4

    .line 545
    invoke-static {v6}, Lafz;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 546
    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v0, v8

    .line 548
    invoke-static {v6}, Lafz;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    .line 549
    goto :goto_3

    .line 551
    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    .line 552
    invoke-static {v6}, Lafz;->a(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_2

    .line 564
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 537
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 543
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 546
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    const-string v1, "local"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-static {p1}, Lafz;->f(Ljava/lang/String;)I

    move-result v0

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 573
    :cond_1
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 575
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 486
    .line 487
    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    .line 489
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 490
    array-length v6, p1

    move v4, v1

    move v0, v5

    :goto_0
    if-lt v4, v6, :cond_0

    .line 516
    if-eqz v0, :cond_5

    move-object v0, v2

    .line 518
    :goto_1
    return-object v0

    .line 490
    :cond_0
    aget-object v7, p1, v4

    .line 491
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 495
    const-string v0, "normal"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 500
    invoke-static {p0, v7}, Lafz;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 496
    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    .line 490
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_2
    const-string v0, "hover"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 502
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    .line 505
    invoke-static {p0, v7}, Lafz;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 502
    invoke-virtual {v3, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 506
    new-array v0, v9, [I

    fill-array-data v0, :array_2

    .line 509
    invoke-static {p0, v7}, Lafz;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 506
    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v0, v1

    .line 510
    goto :goto_2

    :cond_3
    const-string v0, "disable"

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 512
    new-array v0, v5, [I

    const v8, -0x101009e

    aput v8, v0, v1

    .line 513
    invoke-static {p0, v7}, Lafz;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 511
    invoke-virtual {v3, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v3

    .line 516
    goto :goto_1

    :cond_6
    move-object v0, v2

    .line 518
    goto :goto_1

    .line 496
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x59t 0xfft 0xfet 0xfet
        0x64t 0xfft 0xfet 0xfet
    .end array-data

    .line 502
    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data

    .line 506
    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 392
    new-instance v0, Landroid/app/Dialog;

    .line 393
    const-string v1, "mini_safty_dialog"

    invoke-static {v1}, Lg;->h(Ljava/lang/String;)I

    move-result v1

    .line 392
    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 394
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 395
    const-string v2, "mini_safty_code_info_layout"

    invoke-static {v2}, Lg;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 394
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 397
    const-string v2, "mini_safty_code_close"

    invoke-static {v2}, Lg;->a(Ljava/lang/String;)I

    move-result v2

    .line 396
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 398
    new-instance v3, Laga;

    invoke-direct {v3, v0}, Laga;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 405
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 406
    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    const-string v0, "msp_mini_choose_identitify"

    invoke-static {v0}, Lg;->g(Ljava/lang/String;)I

    move-result v0

    .line 412
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    if-nez p1, :cond_0

    .line 416
    const-string v0, "msp_mini_read_protocal_title"

    invoke-static {v0}, Lg;->g(Ljava/lang/String;)I

    move-result v0

    .line 415
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    new-instance p2, Lagb;

    invoke-direct {p2, p0, p3, p4}, Lagb;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 427
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v1, p4, p2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 430
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    new-instance v0, Lxo;

    invoke-direct {v0, p0}, Lxo;-><init>(Landroid/content/Context;)V

    .line 472
    const-string v1, "msp_error_title_default"

    invoke-static {v1}, Lg;->g(Ljava/lang/String;)I

    move-result v1

    .line 471
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxo;->b(Ljava/lang/CharSequence;)Lxo;

    .line 473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u786e\u5b9a\u9000\u51fa\u652f\u4ed8\uff1f"

    :cond_0
    invoke-virtual {v0, p1}, Lxo;->a(Ljava/lang/CharSequence;)Lxo;

    .line 474
    const-string v1, "\u662f"

    invoke-virtual {v0, v1, p2}, Lxo;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;

    .line 475
    const-string v1, "\u5426"

    new-instance v2, Lagd;

    invoke-direct {v2}, Lagd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lxo;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lxo;

    .line 481
    invoke-virtual {v0}, Lxo;->a()Lxn;

    .line 482
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 583
    invoke-static {p0, p1}, Lafz;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    :cond_0
    invoke-static {p2}, Lafz;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_1

    .line 589
    invoke-virtual {p3, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 591
    :cond_1
    return-void
.end method

.method public static a(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 446
    .line 447
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 446
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 448
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 449
    return-void
.end method

.method public static a(Landroid/widget/EditText;)V
    .locals 4
    .parameter

    .prologue
    .line 433
    new-instance v0, Lagc;

    invoke-direct {v0, p0}, Lagc;-><init>(Landroid/widget/EditText;)V

    .line 442
    const-wide/16 v2, 0x12c

    .line 433
    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 443
    return-void
.end method

.method public static a(Landroid/widget/TextView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 389
    return-void
.end method

.method public static a(Ljava/lang/String;Ladj;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-static {}, Lade;->a()Lade;

    move-result-object v0

    iget-object v1, v0, Lade;->a:Landroid/content/Context;

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "local:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 325
    invoke-static {p0}, Lafz;->f(Ljava/lang/String;)I

    move-result v0

    .line 326
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p1, v0}, Ladj;->a(I)V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 330
    :cond_3
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    :cond_4
    invoke-static {v1}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Picasso;

    move-result-object v1

    if-nez p0, :cond_5

    new-instance v0, Labg;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labg;-><init>(Lcom/alipay/squareup/picasso/Picasso;Landroid/net/Uri;)V

    :goto_2
    invoke-virtual {v0, p1}, Labg;->a(Lcom/alipay/squareup/picasso/Target;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Labg;

    move-result-object v0

    goto :goto_2

    .line 333
    :cond_7
    invoke-static {v1}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/content/Context;)Lcom/alipay/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Labg;

    move-result-object v0

    invoke-virtual {v0, p1}, Labg;->a(Lcom/alipay/squareup/picasso/Target;)V

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    const-string v0, "normal"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v2

    .line 598
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 600
    :cond_0
    const-string v0, "hover"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_1

    .line 602
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v3

    .line 603
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    .line 605
    :cond_1
    const-string v0, "disable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 606
    if-eqz v0, :cond_2

    .line 607
    const-string v1, "image"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    .line 608
    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    .line 610
    :cond_2
    return-void
.end method

.method public static b(Landroid/app/Activity;)F
    .locals 2
    .parameter

    .prologue
    .line 625
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 626
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 627
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 127
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/16 v0, 0x11

    .line 137
    :goto_0
    return v0

    .line 130
    :cond_0
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x3

    goto :goto_0

    .line 133
    :cond_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x5

    goto :goto_0

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/app/Activity;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    .line 359
    :cond_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-static {p1}, Lafz;->c(Landroid/app/Activity;)I

    move-result v0

    .line 361
    int-to-float v0, v0

    invoke-static {p0}, Lafz;->g(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    .line 364
    invoke-static {p1}, Lafz;->b(Landroid/app/Activity;)F

    move-result v1

    .line 363
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static b(Landroid/widget/EditText;)V
    .locals 2
    .parameter

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lafz;->a(Landroid/os/IBinder;Landroid/content/Context;)V

    .line 453
    return-void
.end method

.method public static c(Ljava/lang/String;)F
    .locals 2
    .parameter

    .prologue
    .line 141
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 146
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc0

    div-float/2addr v0, v1

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    sget-object v0, Lafz;->a:Ljava/util/HashMap;

    const-string v1, "medium"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)I
    .locals 3
    .parameter

    .prologue
    .line 631
    sget v0, Lafz;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 632
    invoke-static {p0}, Lafz;->a(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    .line 633
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    .line 634
    div-float v1, v0, v1

    const v2, 0x3f19999a

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 635
    const/high16 v1, 0x3f60

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lafz;->c:I

    .line 640
    :cond_0
    :goto_0
    sget v0, Lafz;->c:I

    return v0

    .line 637
    :cond_1
    const/high16 v1, 0x43f0

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    const/high16 v1, 0x438c

    invoke-static {p0}, Lafz;->b(Landroid/app/Activity;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lafz;->c:I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)[I
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3fc0

    const/4 v4, 0x4

    .line 160
    new-array v0, v4, [I

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 165
    :cond_1
    :try_start_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v2, v2, Lade;->a:Landroid/content/Context;

    .line 166
    invoke-static {p0}, Ld;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 168
    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    .line 169
    int-to-float v3, v3

    invoke-static {v2, v3}, Lxe;->a(Landroid/content/Context;F)I

    move-result v2

    .line 170
    :goto_1
    if-ge v1, v4, :cond_0

    .line 171
    aput v2, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 174
    :cond_2
    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_0

    .line 176
    array-length v4, v3

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 177
    :goto_2
    if-ge v1, v4, :cond_0

    .line 178
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 179
    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 180
    int-to-float v5, v5

    invoke-static {v2, v5}, Lxe;->a(Landroid/content/Context;F)I

    move-result v5

    .line 181
    aput v5, v0, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 186
    :catch_0
    move-exception v1

    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)[I
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3fc0

    const/4 v4, 0x4

    .line 193
    new-array v0, v4, [I

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    :try_start_0
    invoke-static {}, Lade;->a()Lade;

    move-result-object v2

    iget-object v3, v2, Lade;->a:Landroid/content/Context;

    .line 199
    invoke-static {p0}, Ld;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 201
    int-to-float v2, v2

    div-float/2addr v2, v7

    float-to-int v2, v2

    .line 202
    int-to-float v2, v2

    invoke-static {v3, v2}, Lxe;->a(Landroid/content/Context;F)I

    move-result v2

    .line 203
    :goto_1
    if-ge v1, v4, :cond_0

    .line 204
    aput v2, v0, v1

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 208
    if-eqz v4, :cond_0

    .line 209
    array-length v2, v4

    const/4 v5, 0x4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v1

    .line 210
    :goto_2
    if-ge v2, v5, :cond_0

    .line 211
    aget-object v1, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 212
    int-to-float v1, v1

    div-float/2addr v1, v7

    float-to-int v1, v1

    .line 213
    int-to-float v6, v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 214
    aput v1, v0, v2

    .line 210
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 213
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_3

    .line 219
    :catch_0
    move-exception v1

    invoke-static {v1}, Ld;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-static {p0}, Ld;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    :goto_0
    return v0

    .line 244
    :cond_0
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    sget-object v2, Lafz;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    sget-object v0, Lafz;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)F
    .locals 2
    .parameter

    .prologue
    .line 371
    const-string v0, "%"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 377
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 376
    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 377
    goto :goto_0
.end method
