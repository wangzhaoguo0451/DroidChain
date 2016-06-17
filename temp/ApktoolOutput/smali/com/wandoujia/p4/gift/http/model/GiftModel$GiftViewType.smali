.class public final enum Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;
.super Ljava/lang/Enum;
.source "GiftModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

.field public static final enum GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

.field public static final enum GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

.field public static final enum GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

.field public static final enum GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

.field public static final enum MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    new-instance v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    const-string v1, "GIFT_LIST"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 187
    new-instance v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    const-string v1, "GIFT_POP_UP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 188
    new-instance v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    const-string v1, "GIFT_DETAIL_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 189
    new-instance v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    const-string v1, "MY_GIFT"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 190
    new-instance v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    const-string v1, "GIFT_RECOMMEND"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    .line 185
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_LIST:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_POP_UP:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_DETAIL_ITEM:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->MY_GIFT:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->GIFT_RECOMMEND:Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->$VALUES:[Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;
    .locals 1
    .parameter

    .prologue
    .line 185
    const-class v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->$VALUES:[Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/gift/http/model/GiftModel$GiftViewType;

    return-object v0
.end method
