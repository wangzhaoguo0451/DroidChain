.class final Ldvr;
.super Lert;
.source "TopicFragment.java"


# instance fields
.field private synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Ldvr;->a:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lert;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Lerf;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v0, p0, Ldvr;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v0

    new-instance v1, Ldqh;

    invoke-direct {v1}, Ldqh;-><init>()V

    const v2, 0x7f0c0129

    invoke-virtual {v0, v2, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    new-instance v1, Ldvt;

    invoke-direct {v1}, Ldvt;-><init>()V

    invoke-virtual {v0, v3, v1, v3}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v0

    return-object v0
.end method
