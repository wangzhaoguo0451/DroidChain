.class Lcom/wandoujia/p4/pay/fragment/PayFragment$4;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.wandoujia.com/account/?source=paysdk#find"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    iget-object v1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$4;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-virtual {v1}, Lcom/wandoujia/p4/pay/fragment/PayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method
