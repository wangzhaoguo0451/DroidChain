.class public final enum Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;
.super Ljava/lang/Enum;
.source "GiftCardViewModelImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

.field public static final enum CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

.field public static final enum OTHER:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;


# instance fields
.field private giftType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    const-string v1, "CDKEY"

    const-string v2, "CDKEY"

    invoke-direct {v0, v1, v3, v2}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    .line 31
    new-instance v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    const-string v1, "OTHER"

    const-string v2, "OTHER"

    invoke-direct {v0, v1, v4, v2}, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->OTHER:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    sget-object v1, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->CDKEY:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->OTHER:Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->$VALUES:[Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->giftType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->$VALUES:[Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;

    return-object v0
.end method


# virtual methods
.method public final getGiftType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/gift/view/model/GiftCardViewModelImpl$GiftType;->giftType:Ljava/lang/String;

    return-object v0
.end method
