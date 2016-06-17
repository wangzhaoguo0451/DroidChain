.class Lcom/wandoujia/p4/pay/fragment/PayFragment$14;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$14;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 791
    const-string v0, "recharge_not_enought"

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 793
    return-void
.end method
