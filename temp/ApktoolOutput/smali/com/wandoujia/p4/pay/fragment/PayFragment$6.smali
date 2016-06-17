.class Lcom/wandoujia/p4/pay/fragment/PayFragment$6;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 528
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/fragment/PayFragment$6;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 531
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$6;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    #getter for: Lcom/wandoujia/p4/pay/fragment/PayFragment;->promptText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->access$2300(Lcom/wandoujia/p4/pay/fragment/PayFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_0
    return-void
.end method
