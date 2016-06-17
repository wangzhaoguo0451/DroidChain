.class public final enum Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;
.super Ljava/lang/Enum;
.source "PublisherButtonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

.field public static final enum NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

.field public static final enum ON_SUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

.field public static final enum ON_UNSUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

.field public static final enum SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    const-string v1, "SUBSCRIBED"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    .line 32
    new-instance v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    const-string v1, "NOT_SUBSCRIBED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    .line 33
    new-instance v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    const-string v1, "ON_SUBSCRIBE"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ON_SUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    .line 34
    new-instance v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    const-string v1, "ON_UNSUBSCRIBE"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ON_UNSUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ON_SUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ON_UNSUBSCRIBE:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->$VALUES:[Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->$VALUES:[Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v0}, [Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    return-object v0
.end method
