.class public final Lejj;
.super Ljava/lang/Object;
.source "GpuSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Leji;


# direct methods
.method public constructor <init>(Leji;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lejj;->a:Leji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lejj;->a:Leji;

    iget-object v0, v0, Leji;->c:Lejl;

    iget-object v1, p0, Lejj;->a:Leji;

    iget-object v1, v1, Leji;->d:Lejm;

    iget v2, v1, Lejm;->a:I

    invoke-virtual {v1, v2}, Lejm;->a(I)Lcom/wandoujia/entities/app/ApkObbInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lejl;->b:Lefe;

    invoke-static {v2}, Lefe;->f(Lefe;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lejl;->b:Lefe;

    invoke-static {v3}, Lefe;->a(Lefe;)Leiu;

    move-result-object v3

    invoke-interface {v3}, Leiu;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lejl;->b:Lefe;

    invoke-static {v4}, Lefe;->a(Lefe;)Leiu;

    move-result-object v4

    invoke-interface {v4}, Leiu;->p()Ljava/util/List;

    move-result-object v4

    iget-object v0, v0, Lejl;->a:Lehp;

    invoke-static {v2, v3, v4, v1, v0}, Lefe;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/wandoujia/entities/app/ApkObbInfo;Lehp;)V

    .line 48
    :cond_0
    return-void
.end method
