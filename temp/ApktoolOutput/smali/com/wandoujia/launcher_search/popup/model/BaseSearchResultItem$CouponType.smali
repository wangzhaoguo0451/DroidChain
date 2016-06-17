.class public final enum Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;
.super Ljava/lang/Enum;
.source "BaseSearchResultItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

.field public static final enum COUPON_CODE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    const-string v1, "COUPON_CODE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->COUPON_CODE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    sget-object v1, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->COUPON_CODE:Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;
    .locals 1
    .parameter

    .prologue
    .line 159
    const-class v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->$VALUES:[Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher_search/popup/model/BaseSearchResultItem$CouponType;

    return-object v0
.end method
