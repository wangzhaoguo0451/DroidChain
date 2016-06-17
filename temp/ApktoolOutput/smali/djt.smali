.class public final synthetic Ldjt;
.super Ljava/lang/Object;
.source "NotificationController.java"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->values()[Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldjt;->b:[I

    :try_start_0
    sget-object v0, Ldjt;->b:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Ldjt;->b:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ONE_BUTTON:Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Ldjt;->b:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ICON_LIST:Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 391
    :goto_2
    invoke-static {}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->values()[Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldjt;->a:[I

    :try_start_3
    sget-object v0, Ldjt;->a:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Ldjt;->a:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_PICTURE:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Ldjt;->a:[I

    sget-object v1, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->BIG_TEXT:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
