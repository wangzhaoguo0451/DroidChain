.class Lcom/wandoujia/p4/pay/fragment/PayFragment$13;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

.field final synthetic val$ok:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$13;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$13;->val$ok:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 785
    const-string v0, "recharge_not_enought"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$13;->val$ok:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 787
    return-void
.end method
