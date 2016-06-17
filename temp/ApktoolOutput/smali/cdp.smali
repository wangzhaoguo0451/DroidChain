.class public final Lcdp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/LinearLayout;

.field private synthetic b:Lcom/unionpay/mpay/views/b;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/b;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcdp;->b:Lcom/unionpay/mpay/views/b;

    iput-object p2, p0, Lcdp;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcdp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcdp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcdp;->b:Lcom/unionpay/mpay/views/b;

    iget-object v0, v0, Lcom/unionpay/mpay/views/b;->k:Lcom/unionpay/mpay/widgets/ac;

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/ac;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcdp;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcdp;->b:Lcom/unionpay/mpay/views/b;

    iget-object v0, v0, Lcom/unionpay/mpay/views/b;->k:Lcom/unionpay/mpay/widgets/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unionpay/mpay/widgets/ac;->a(Z)V

    goto :goto_0
.end method
