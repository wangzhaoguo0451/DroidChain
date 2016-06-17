.class public final Letr;
.super Ljava/lang/Object;
.source "AccountProfileFragment.java"

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
.field private synthetic a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Letr;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onError(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    .line 294
    check-cast p1, Lcom/wandoujia/p4/model/PayParams;

    :try_start_0
    iget-object v0, p0, Letr;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Letr;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Letr;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ld;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/wandoujia/p4/model/PayParams;->content:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "balance"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ld;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Letr;->a:Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;->g(Lcom/wandoujia/p4/account/fragment/AccountProfileFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0e001d

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0e00d0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
