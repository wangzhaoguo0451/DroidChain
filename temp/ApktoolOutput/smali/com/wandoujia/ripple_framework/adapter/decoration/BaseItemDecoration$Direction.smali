.class public final enum Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;
.super Ljava/lang/Enum;
.source "BaseItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

.field public static final enum BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

.field public static final enum TOP:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->TOP:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    new-instance v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    sget-object v1, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->TOP:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->BOTTOM:Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->$VALUES:[Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;
    .locals 1
    .parameter

    .prologue
    .line 114
    const-class v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->$VALUES:[Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/adapter/decoration/BaseItemDecoration$Direction;

    return-object v0
.end method
