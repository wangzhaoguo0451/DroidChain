.class public final Lcdy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/n;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/n;)V
    .locals 0

    iput-object p1, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-static {v0}, Lcom/unionpay/mpay/views/n;->a(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mpay_2/upview/a;->b()Z

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-static {v0}, Lcom/unionpay/mpay/views/n;->a(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v2

    invoke-virtual {v2}, Lcex;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    iget-object v2, v2, Lcex;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-static {v0}, Lcom/unionpay/mpay/views/n;->b(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upwidget/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    invoke-static {v0}, Lcom/unionpay/mpay/views/n;->b(Lcom/unionpay/mpay/views/n;)Lcom/unionpay/mpay_2/upwidget/c;

    move-result-object v0

    iget-object v3, v0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    iget-object v0, v0, Lcom/unionpay/mpay_2/upwidget/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    sget-object v2, Lccg;->ab:Lccg;

    iget-object v2, v2, Lccg;->R:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/unionpay/mpay/views/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    iget-object v0, v0, Lcom/unionpay/mpay/views/n;->b:Lcem;

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcdy;->a:Lcom/unionpay/mpay/views/n;

    iget-object v1, v2, Lcex;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mpay/views/n;->a(Lcom/unionpay/mpay/views/n;Ljava/lang/String;)V

    goto :goto_0
.end method
