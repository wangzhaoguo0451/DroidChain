.class public final Ldux;
.super Ljava/lang/Object;
.source "SubscribableUtils.java"


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "SUBSCRIBE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ldux;->a:I

    .line 13
    const-string v0, "FAVORITE"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Ldux;->b:I

    return-void
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    sget v0, Ldux;->a:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static a(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    sget v0, Ldux;->a:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/api/proto/PublisherDetail;->subscribed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Lcom/wandoujia/ripple_framework/model/Model;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    sget v0, Ldux;->b:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static b(Lcom/wandoujia/ripple_framework/model/Model;)Z
    .locals 2
    .parameter

    .prologue
    .line 38
    sget v0, Ldux;->b:I

    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->FAVORITE:Lcom/wandoujia/api/proto/BadgeEnum$Badge;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/BadgeEnum$Badge;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :cond_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
