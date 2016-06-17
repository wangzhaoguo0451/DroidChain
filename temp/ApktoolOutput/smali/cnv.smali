.class public final Lcnv;
.super Ljava/lang/Object;
.source "AccountDialogUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/content/Context;

.field private synthetic d:Z

.field private synthetic e:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/widget/Button;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcnv;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcnv;->d:Z

    iput-object p3, p0, Lcnv;->e:Landroid/widget/Button;

    iput-object p4, p0, Lcnv;->a:Ljava/lang/String;

    iput-object p5, p0, Lcnv;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcnv;->c:Landroid/content/Context;

    iget-boolean v1, p0, Lcnv;->d:Z

    iget-object v2, p0, Lcnv;->e:Landroid/widget/Button;

    invoke-static {v0, v1, v2}, Ld;->a(Landroid/content/Context;ZLandroid/widget/Button;)V

    .line 120
    new-instance v0, Lcnw;

    invoke-direct {v0, p0}, Lcnw;-><init>(Lcnv;)V

    invoke-virtual {v0}, Lcnw;->start()V

    .line 126
    return-void
.end method
