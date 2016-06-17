.class Lcom/wandoujia/p4/pay/fragment/RechargeFragment$9;
.super Ljava/lang/Object;
.source "RechargeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/RechargeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/RechargeFragment$9;->this$0:Lcom/wandoujia/p4/pay/fragment/RechargeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 499
    return-void
.end method
