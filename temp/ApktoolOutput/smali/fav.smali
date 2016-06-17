.class public final Lfav;
.super Ljava/lang/Object;
.source "SubActionButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/button/views/SubActionButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/button/views/SubActionButton;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lfav;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lfav;->a:Lcom/wandoujia/p4/button/views/SubActionButton;

    invoke-static {v0}, Lcom/wandoujia/p4/button/views/SubActionButton;->a(Lcom/wandoujia/p4/button/views/SubActionButton;)Lcom/wandoujia/p4/views/NirvanaListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/views/NirvanaListPopupWindow;->c()V

    .line 42
    return-void
.end method
