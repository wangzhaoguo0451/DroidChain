.class final Leas;
.super Ljava/lang/Object;
.source "FolderIconController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Leax;

.field private synthetic b:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;


# direct methods
.method constructor <init>(Leax;Lcom/wandoujia/launcher/launcher/icon/FolderItemView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Leas;->a:Leax;

    iput-object p2, p0, Leas;->b:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Leas;->a:Leax;

    iget-object v1, p0, Leas;->b:Lcom/wandoujia/launcher/launcher/icon/FolderItemView;

    invoke-interface {v0, v1}, Leax;->a(Landroid/view/View;)Leaf;

    move-result-object v0

    .line 25
    invoke-interface {v0}, Leaf;->a()V

    .line 28
    return-void
.end method
