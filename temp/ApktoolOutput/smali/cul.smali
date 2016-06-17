.class final Lcul;
.super Ljava/lang/Object;
.source "GamePacketAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcuj;

.field private synthetic b:Lcuk;


# direct methods
.method constructor <init>(Lcuk;Lcuj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcul;->b:Lcuk;

    iput-object p2, p0, Lcul;->a:Lcuj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcul;->b:Lcuk;

    iget-object v0, v0, Lcuk;->c:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcul;->b:Lcuk;

    iget-object v0, v0, Lcuk;->c:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcul;->a:Lcuj;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 150
    :cond_0
    return-void
.end method
