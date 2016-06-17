.class public final Lcdt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unionpay/mpay/views/e;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/e;)V
    .locals 0

    iput-object p1, p0, Lcdt;->a:Lcom/unionpay/mpay/views/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcdt;->a:Lcom/unionpay/mpay/views/e;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/e;->g()V

    iget-object v0, p0, Lcdt;->a:Lcom/unionpay/mpay/views/e;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/unionpay/mpay/views/e;->a(Lcom/unionpay/mpay/views/e;I)I

    return-void
.end method
