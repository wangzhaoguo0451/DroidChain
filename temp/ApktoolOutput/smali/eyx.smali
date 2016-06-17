.class public final Leyx;
.super Legg;
.source "ALFunctionCell.java"


# instance fields
.field private a:Lfai;

.field private g:Lfan;

.field private h:Leyy;


# direct methods
.method public constructor <init>(Lfai;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Legg;-><init>()V

    .line 21
    iput-object p1, p0, Leyx;->a:Lfai;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Leyy;

    invoke-direct {v0}, Leyy;-><init>()V

    iput-object v0, p0, Leyx;->h:Leyy;

    .line 29
    invoke-static {p2}, Lfan;->c(Landroid/view/ViewGroup;)Lfan;

    move-result-object v0

    iput-object v0, p0, Leyx;->g:Lfan;

    .line 30
    iget-object v0, p0, Leyx;->h:Leyy;

    iget-object v1, p0, Leyx;->g:Lfan;

    iget-object v2, p0, Leyx;->a:Lfai;

    invoke-virtual {v0, v1, v2}, Leyy;->a(Lfan;Lfai;)V

    .line 31
    iget-object v0, p0, Leyx;->g:Lfan;

    iget-object v0, v0, Lfan;->c:Landroid/widget/TextView;

    iget-object v1, p0, Leyx;->a:Lfai;

    iget-object v1, v1, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Leyx;->g:Lfan;

    iget-object v0, v0, Lfan;->b:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    iget-object v1, p0, Leyx;->a:Lfai;

    invoke-virtual {v1}, Lfai;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->a(Ljava/lang/String;I)V

    .line 33
    iget-object v0, p0, Leyx;->g:Lfan;

    iget-object v0, v0, Lfan;->b:Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;

    iget-object v1, p0, Leyx;->a:Lfai;

    iget-object v1, v1, Lfai;->a:Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;

    iget-object v1, v1, Lcom/wandoujia/p4/app_launcher/model/ALSuggestion$FunctionInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/view/stateful/view/DoubleIcon;->b:Lcom/wandoujia/image/view/AsyncImageView;

    invoke-virtual {v0, v1, v3}, Lcom/wandoujia/image/view/AsyncImageView;->b(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Leyx;->g:Lfan;

    invoke-virtual {v0}, Lfan;->getView()Landroid/view/View;

    move-result-object p1

    .line 37
    :cond_0
    return-object p1
.end method
