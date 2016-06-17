.class public final synthetic Lexl;
.super Ljava/lang/Object;
.source "AppModelUtils.java"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    invoke-static {}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->values()[Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lexl;->b:[I

    :try_start_0
    sget-object v0, Lexl;->b:[I

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->NONE:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lexl;->b:[I

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->VERTICAL:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lexl;->b:[I

    sget-object v1, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->TAG:Lcom/wandoujia/p4/card/models/CardViewModel$TagType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/card/models/CardViewModel$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    .line 55
    :goto_2
    invoke-static {}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->values()[Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lexl;->a:[I

    :try_start_3
    sget-object v0, Lexl;->a:[I

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->FREE_TRAFFIC:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    invoke-virtual {v1}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
