.class public final Ldkn;
.super Ljava/lang/Object;
.source "OnboardActivity.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lcom/wandoujia/api/proto/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    check-cast p1, Lcom/wandoujia/api/proto/HttpResponse;

    iget-object v0, p1, Lcom/wandoujia/api/proto/HttpResponse;->entity:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->finish()V

    :cond_0
    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-static {v0, p1}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a(Lcom/wandoujia/jupiter/onboard/OnboardActivity;Lcom/wandoujia/api/proto/HttpResponse;)V

    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->finish()V

    :cond_1
    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-static {v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->b(Lcom/wandoujia/jupiter/onboard/OnboardActivity;)I

    iget-object v0, p0, Ldkn;->a:Lcom/wandoujia/jupiter/onboard/OnboardActivity;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/onboard/OnboardActivity;->a()V

    return-void
.end method
