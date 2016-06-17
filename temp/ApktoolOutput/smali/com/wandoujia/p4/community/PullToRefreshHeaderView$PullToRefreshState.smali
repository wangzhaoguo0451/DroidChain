.class public final enum Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;
.super Ljava/lang/Enum;
.source "PullToRefreshHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

.field public static final enum LOADING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

.field public static final enum PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

.field public static final enum RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    const-string v1, "PULLING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    new-instance v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    new-instance v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->LOADING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->PULLING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->RELEASE:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->LOADING:Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->$VALUES:[Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->$VALUES:[Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/community/PullToRefreshHeaderView$PullToRefreshState;

    return-object v0
.end method
