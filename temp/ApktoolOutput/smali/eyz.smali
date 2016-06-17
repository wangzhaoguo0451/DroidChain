.class final Leyz;
.super Ljava/lang/Object;
.source "ALFunctionIconController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lfai;

.field private synthetic b:Lfan;

.field private synthetic c:Leyy;


# direct methods
.method constructor <init>(Leyy;Lfai;Lfan;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Leyz;->c:Leyy;

    iput-object p2, p0, Leyz;->a:Lfai;

    iput-object p3, p0, Leyz;->b:Lfan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Leyz;->a:Lfai;

    invoke-virtual {v0}, Lfai;->c()Lcom/wandoujia/mvc/Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 67
    iget-object v0, p0, Leyz;->a:Lfai;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lfai;->b:Z

    .line 68
    iget-object v0, p0, Leyz;->b:Lfan;

    iget-object v1, p0, Leyz;->a:Lfai;

    invoke-static {v0, v1}, Leyy;->b(Lfan;Lfai;)V

    .line 69
    iget-object v0, p0, Leyz;->a:Lfai;

    invoke-static {p1, v0}, Lfam;->a(Landroid/view/View;Lcom/wandoujia/p4/app_launcher/model/ALBaseIconModel;)V

    .line 70
    return-void
.end method
