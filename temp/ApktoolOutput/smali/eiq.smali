.class final Leiq;
.super Ljava/lang/Object;
.source "AppButtonSelector.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private synthetic a:Lcom/wandoujia/mvc/Action;


# direct methods
.method constructor <init>(Lcom/wandoujia/mvc/Action;)V
    .locals 0
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Leiq;->a:Lcom/wandoujia/mvc/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Leiq;->a:Lcom/wandoujia/mvc/Action;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Leiq;->a:Lcom/wandoujia/mvc/Action;

    invoke-interface {v0}, Lcom/wandoujia/mvc/Action;->execute()V

    .line 415
    :cond_0
    return-void
.end method
