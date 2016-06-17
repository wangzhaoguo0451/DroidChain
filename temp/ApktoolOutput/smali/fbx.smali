.class final Lfbx;
.super Ljava/lang/Object;
.source "CardViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/mvc/Action;


# direct methods
.method constructor <init>(Lcom/wandoujia/mvc/Action;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lfbx;->a:Lcom/wandoujia/mvc/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lfbx;->a:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 74
    return-void
.end method
