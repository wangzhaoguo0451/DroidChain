.class public final Lcdq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/unionpay/mpay/views/b;


# direct methods
.method public constructor <init>(Lcom/unionpay/mpay/views/b;Z)V
    .locals 0

    iput-object p1, p0, Lcdq;->b:Lcom/unionpay/mpay/views/b;

    iput-boolean p2, p0, Lcdq;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcdq;->b:Lcom/unionpay/mpay/views/b;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/b;->g()V

    iget-boolean v0, p0, Lcdq;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcdq;->b:Lcom/unionpay/mpay/views/b;

    invoke-virtual {v0}, Lcom/unionpay/mpay/views/b;->h()V

    :cond_0
    return-void
.end method
