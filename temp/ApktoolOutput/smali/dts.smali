.class public final Ldts;
.super Ljava/lang/Object;
.source "PublisherButtonPresenter.java"

# interfaces
.implements Lgcj;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgcd;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v0, v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v1, v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V

    .line 44
    :cond_0
    return-void
.end method

.method public final b(Lgcd;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v0, v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v1, v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final c(Lgcd;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v0, v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v1, v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->NOT_SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V

    .line 60
    :cond_0
    return-void
.end method

.method public final d(Lgcd;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v0, v0, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    iget-object v1, v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a:Lgcd;

    invoke-virtual {v1}, Lgcd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Ldts;->a:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;

    sget-object v1, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;->SUBSCRIBED:Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter;->a(Lcom/wandoujia/jupiter/subscribe/PublisherButtonPresenter$SubscribableState;)V

    .line 68
    :cond_0
    return-void
.end method
