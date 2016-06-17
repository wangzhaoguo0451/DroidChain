.class public final enum Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;
.super Ljava/lang/Enum;
.source "CardViewModelAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum CHOICE_MUST_HAVE:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum DETAIL_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum DOWNLOADED_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum FREE_TRAFFIC:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum NORMAL:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum RANKING:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

.field public static final enum SEARCH:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "DOWNLOADED_RECOMMEND"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->DOWNLOADED_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->NORMAL:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "FREE_TRAFFIC"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->FREE_TRAFFIC:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "RANKING"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->RANKING:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 25
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "CHOICE_MUST_HAVE"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->CHOICE_MUST_HAVE:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 26
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "DETAIL_RECOMMEND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->DETAIL_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 27
    new-instance v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    const-string v1, "SEARCH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->SEARCH:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->DOWNLOADED_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->NORMAL:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->FREE_TRAFFIC:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->RANKING:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->CHOICE_MUST_HAVE:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->DETAIL_RECOMMEND:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->SEARCH:Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->$VALUES:[Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->$VALUES:[Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/app/view/model/CardViewModelAppImpl$AppType;

    return-object v0
.end method
