.class public final enum Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;
.super Ljava/lang/Enum;
.source "LoadPreHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

.field public static final enum DEFAULT:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

.field public static final enum LOADING:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->DEFAULT:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    new-instance v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->LOADING:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    sget-object v1, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->DEFAULT:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->LOADING:Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->$VALUES:[Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->$VALUES:[Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/card/view/LoadPreHeaderView$State;

    return-object v0
.end method
