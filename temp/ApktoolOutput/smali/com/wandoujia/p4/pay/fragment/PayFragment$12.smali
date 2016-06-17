.class Lcom/wandoujia/p4/pay/fragment/PayFragment$12;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$12;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$12;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 769
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$12;->val$page:Ljava/lang/String;

    const-string v1, "no"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 771
    return-void
.end method
