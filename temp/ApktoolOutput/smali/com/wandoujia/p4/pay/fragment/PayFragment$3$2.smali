.class Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

.field final synthetic val$actionPay:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment$3;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;->this$1:Lcom/wandoujia/p4/pay/fragment/PayFragment$3;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;->val$actionPay:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$3$2;->val$actionPay:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    return-void
.end method
