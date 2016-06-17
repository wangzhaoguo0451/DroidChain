.class public final Lcdn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/LinearLayout;

.field private synthetic b:Lcom/unionpay/mpay/views/ao;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/ao;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcdn;->b:Lcom/unionpay/mpay/views/ao;

    iput-object p2, p0, Lcdn;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x8

    iget-object v1, p0, Lcdn;->b:Lcom/unionpay/mpay/views/ao;

    invoke-static {v1}, Lcom/unionpay/mpay/views/ao;->b(Lcom/unionpay/mpay/views/ao;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcdn;->a:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcdn;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
