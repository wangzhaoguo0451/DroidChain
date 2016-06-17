.class final Ldlw;
.super Ljava/lang/Object;
.source "DetailHeaderLayoutPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ldlv;


# direct methods
.method constructor <init>(Ldlv;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Ldlw;->a:Ldlv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Ldlw;->a:Ldlv;

    invoke-virtual {v0}, Ldlv;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Ldlw;->a:Ldlv;

    invoke-virtual {v1}, Lerg;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ldwk;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 40
    return-void
.end method
