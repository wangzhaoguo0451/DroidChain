.class public final Lcom/wandoujia/jupiter/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field private static final g:[I

.field private static final h:I


# instance fields
.field private a:Lcom/wandoujia/push/protocol/NotificationModel;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

.field private f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wandoujia/jupiter/notification/NotificationController;->g:[I

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/wandoujia/jupiter/notification/NotificationController;->h:I

    return-void

    .line 56
    nop

    :array_0
    .array-data 0x4
        0x77t 0x1t 0xct 0x7ft
        0x78t 0x1t 0xct 0x7ft
        0x79t 0x1t 0xct 0x7ft
        0x7at 0x1t 0xct 0x7ft
        0x7bt 0x1t 0xct 0x7ft
        0x7ct 0x1t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/wandoujia/push/protocol/NotificationModel;ILcom/wandoujia/jupiter/notification/NotificationController$NotificationType;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    .line 75
    iput p2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->b:I

    .line 76
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    .line 77
    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/NotificationModel;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->d:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->e:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    .line 79
    iput-object p4, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->f:Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/wandoujia/jupiter/notification/NotificationController;->h:I

    return v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;)I
    .locals 3
    .parameter

    .prologue
    const v0, 0x7f03003c

    .line 38
    sget-object v1, Ldjt;->a:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f03003f

    goto :goto_0

    :pswitch_2
    const v0, 0x7f03003b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;)I
    .locals 3
    .parameter

    .prologue
    const v0, 0x7f03003a

    .line 38
    sget-object v1, Ldjt;->b:[I

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f03003e

    goto :goto_0

    :pswitch_2
    const v0, 0x7f03003d

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 515
    .line 518
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v0

    .line 522
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 523
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 524
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v0

    .line 530
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 534
    :goto_1
    if-eqz v2, :cond_0

    .line 539
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 541
    :catch_0
    move-exception v1

    goto :goto_0

    .line 526
    :catch_1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_2

    .line 532
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 534
    :cond_2
    :goto_3
    if-eqz v2, :cond_0

    .line 539
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 541
    :catch_2
    move-exception v1

    goto :goto_0

    .line 528
    :catch_3
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_4
    if-eqz v1, :cond_3

    .line 532
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 534
    :cond_3
    :goto_5
    if-eqz v2, :cond_0

    .line 539
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 541
    :catch_4
    move-exception v1

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_4

    .line 532
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 534
    :cond_4
    :goto_7
    if-eqz v2, :cond_5

    .line 539
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 541
    :cond_5
    :goto_8
    throw v0

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_8

    .line 530
    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 528
    :catch_a
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_b
    move-exception v3

    goto :goto_4

    .line 526
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_2

    :catch_d
    move-exception v3

    goto :goto_2
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/notification/NotificationController;)Ljava/util/Map;
    .locals 4
    .parameter

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel;->getImageView()Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel;->getPositiveButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getNegativeButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private a(Landroid/content/Intent;Ldju;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 549
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 550
    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->f:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 554
    :cond_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "title"

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "standard_view_type"

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getStandardViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v1, "big_view_type"

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getBigViewType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "notification_id"

    iget v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string v1, "notification_type"

    iget-object v2, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->e:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    invoke-virtual {v2}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v1, "click_view_type"

    iget-object v2, p2, Ldju;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "click_view_element"

    iget-object v2, p2, Ldju;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v1, "click_view_text"

    iget-object v2, p2, Ldju;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 566
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/notification/NotificationController;Landroid/content/Intent;Ldju;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Landroid/content/Intent;Ldju;)V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/notification/NotificationController;Landroid/widget/RemoteViews;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0c0171

    const/4 v2, 0x0

    const/16 v7, 0x8

    .line 38
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0c0078

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getDetail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0c0015

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    new-instance v1, Ldju;

    invoke-direct {v1, v2}, Ldju;-><init>(B)V

    iput-object p3, v1, Ldju;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getImageView()Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v4, 0x7f0c017d

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImageIntent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImageIntent()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x1000

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "small_image"

    iput-object v4, v1, Ldju;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Landroid/content/Intent;Ldju;)V

    iget-object v4, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v4, 0x7f0c017d

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_2
    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImageIntent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImageIntent()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x1000

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "big_image"

    iput-object v3, v1, Ldju;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Landroid/content/Intent;Ldju;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0c0171

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getIcon()Lcom/wandoujia/push/protocol/NotificationModel$Icon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getLargeIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v3, 0x7f0c016d

    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getLargeIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_4
    invoke-virtual {v1}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getSmallIconList()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    array-length v0, v3

    if-lez v0, :cond_9

    move v1, v2

    :goto_5
    array-length v0, v3

    if-ge v1, v0, :cond_8

    const/4 v0, 0x6

    if-ge v1, v0, :cond_8

    aget-object v0, v3, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/wandoujia/jupiter/notification/NotificationController;->g:[I

    aget v4, v0, v1

    aget-object v0, v3, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_3
    const v1, 0x7f0c0078

    invoke-virtual {p1, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f0c0015

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f0c017d

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020331

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const v3, 0x7f0c016d

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_8
    :goto_6
    const/4 v0, 0x6

    if-ge v1, v0, :cond_a

    sget-object v0, Lcom/wandoujia/jupiter/notification/NotificationController;->g:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    const v0, 0x7f0c0176

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_a
    new-instance v1, Ldju;

    invoke-direct {v1, v2}, Ldju;-><init>(B)V

    iput-object p3, v1, Ldju;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getPositiveButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const v0, 0x7f0c0170

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldju;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v3, 0x7f0c016f

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_7
    :try_start_2
    const-string v0, "positive_button"

    iput-object v0, v1, Ldju;->b:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIntent()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x1000

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Landroid/content/Intent;Ldju;)V

    iget-object v3, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x7f0c016e

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getNegativeButton()Lcom/wandoujia/push/protocol/NotificationModel$Button;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f0c0175

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldju;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const v4, 0x7f0c0174

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIconPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_9
    :try_start_3
    const-string v0, "negative_button"

    iput-object v0, v1, Ldju;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getIntent()Ljava/lang/String;

    move-result-object v0

    const/high16 v4, 0x1000

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Landroid/content/Intent;Ldju;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0c0173

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_a
    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0c0172

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_b
    return-void

    :cond_c
    const v0, 0x7f0c016f

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_7

    :cond_d
    const v0, 0x7f0c016e

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_8

    :cond_e
    const v0, 0x7f0c0174

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_9

    :cond_f
    const v0, 0x7f0c0173

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_2
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getIcon()Lcom/wandoujia/push/protocol/NotificationModel$Icon;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getLargeIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getLargeIconPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getLargeIconPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Icon;->getSmallIconList()[Ljava/lang/String;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 473
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 474
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 475
    invoke-static {v3}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 476
    if-eqz v4, :cond_1

    .line 477
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    return-object v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/notification/NotificationController;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/wandoujia/jupiter/notification/NotificationController;->b:I

    return v0
.end method
