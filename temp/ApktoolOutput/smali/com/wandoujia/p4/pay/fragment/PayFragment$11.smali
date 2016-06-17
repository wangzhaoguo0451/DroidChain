.class Lcom/wandoujia/p4/pay/fragment/PayFragment$11;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

.field final synthetic val$ok:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/fragment/PayFragment;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;->this$0:Lcom/wandoujia/p4/pay/fragment/PayFragment;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;->val$page:Ljava/lang/String;

    iput-object p3, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;->val$ok:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 763
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;->val$page:Ljava/lang/String;

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/LogEvent;->click(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/wandoujia/p4/pay/fragment/PayFragment$11;->val$ok:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 765
    return-void
.end method
