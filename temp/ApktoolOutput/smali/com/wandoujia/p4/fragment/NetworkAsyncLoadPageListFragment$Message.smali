.class public final enum Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;
.super Ljava/lang/Enum;
.source "NetworkAsyncLoadPageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

.field public static final enum REFRESHING:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

.field public static final enum REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

.field public static final enum REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

.field public static final enum REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 516
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-string v1, "REFRESHING"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    .line 517
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-string v1, "REFRESH_IS_SLOW"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    .line 518
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-string v1, "REFRESH_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    .line 519
    new-instance v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    const-string v1, "REFRESH_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    .line 515
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESHING:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_IS_SLOW:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_SUCCESS:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->REFRESH_FAILED:Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->$VALUES:[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

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
    .line 515
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;
    .locals 1
    .parameter

    .prologue
    .line 515
    const-class v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->$VALUES:[Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/fragment/NetworkAsyncLoadPageListFragment$Message;

    return-object v0
.end method
