.class public final Lxx;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static c:Z


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lxx;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const-string v0, "ProgressDialog"

    .line 24
    const-string v1, "style"

    invoke-static {p1, v0, v1}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 25
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lxx;->c:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lxx;->a:Landroid/widget/TextView;

    .line 69
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lxx;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    const-string v0, "msp_dialog_progress"

    .line 45
    const-string v2, "layout"

    .line 44
    invoke-static {v1, v0, v2}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxx;->setContentView(I)V

    .line 47
    const-string v0, "text"

    const-string v2, "id"

    .line 46
    invoke-static {v1, v0, v2}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lxx;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxx;->a:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lxx;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lxx;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    sget-boolean v0, Lxx;->c:Z

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "mini_loading_1"

    const-string v3, "string"

    .line 50
    invoke-static {v1, v0, v3}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lxx;->b:Ljava/lang/CharSequence;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lxx;->c:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lxx;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lxx;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 52
    :cond_1
    const-string v0, "mini_loading"

    const-string v3, "string"

    invoke-static {v1, v0, v3}, Lg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
