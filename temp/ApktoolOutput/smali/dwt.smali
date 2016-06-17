.class public final Ldwt;
.super Ljava/lang/Object;
.source "AccountView.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/callback/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/rpc/http/callback/Callback",
        "<",
        "Lcom/wandoujia/p4/model/PayParams;",
        "Ljava/util/concurrent/ExecutionException;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/AccountView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/AccountView;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Ldwt;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onError(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 155
    check-cast p1, Lcom/wandoujia/p4/model/PayParams;

    :try_start_0
    iget-object v0, p0, Ldwt;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/AccountView;->a(Lcom/wandoujia/jupiter/view/AccountView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "balance"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, Ldwt;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/view/AccountView;->a(Lcom/wandoujia/jupiter/view/AccountView;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0e003d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Ldwt;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-static {v1}, Lcom/wandoujia/jupiter/view/AccountView;->a(Lcom/wandoujia/jupiter/view/AccountView;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldwt;->a:Lcom/wandoujia/jupiter/view/AccountView;

    invoke-static {v2}, Lcom/wandoujia/jupiter/view/AccountView;->a(Lcom/wandoujia/jupiter/view/AccountView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e00d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
