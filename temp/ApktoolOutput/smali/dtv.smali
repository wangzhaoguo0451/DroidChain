.class public final synthetic Ldtv;
.super Ljava/lang/Object;
.source "PublisherButtonPresenter.java"


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    invoke-static {}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->values()[Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ldtv;->a:[I

    :try_start_0
    sget-object v0, Ldtv;->a:[I

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Ldtv;->a:[I

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
