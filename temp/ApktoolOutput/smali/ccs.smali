.class public final Lccs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/se/a;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/se/a;)V
    .locals 0

    iput-object p1, p0, Lccs;->a:Lcom/unionpay/mpay/se/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lccs;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->n(Lcom/unionpay/mpay/se/a;)V

    iget-object v0, p0, Lccs;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v0}, Lcom/unionpay/mpay/se/a;->o(Lcom/unionpay/mpay/se/a;)Lcem;

    move-result-object v0

    sget-object v1, Lccg;->ab:Lccg;

    iget-object v1, v1, Lccg;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcem;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccs;->a:Lcom/unionpay/mpay/se/a;

    iget-object v1, p0, Lccs;->a:Lcom/unionpay/mpay/se/a;

    invoke-static {v1}, Lcom/unionpay/mpay/se/a;->b(Lcom/unionpay/mpay/se/a;)Lcom/unionpay/mpay_2/upview/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unionpay/mpay_2/upview/a;->a(Z)Lcex;

    move-result-object v1

    iget-object v1, v1, Lcex;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unionpay/mpay/se/a;->d(Lcom/unionpay/mpay/se/a;Ljava/lang/String;)V

    return-void
.end method
