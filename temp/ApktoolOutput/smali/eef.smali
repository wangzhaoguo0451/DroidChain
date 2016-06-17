.class public final Leef;
.super Ljava/lang/Object;
.source "BaseLauncherAdapter.java"


# instance fields
.field public a:I

.field public b:Lcom/wandoujia/mvc/BaseView;

.field public c:Lcom/wandoujia/mvc/BaseController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/mvc/BaseModel;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Leef;->c:Lcom/wandoujia/mvc/BaseController;

    iget-object v1, p0, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v0, v1, p1}, Lcom/wandoujia/mvc/BaseController;->bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V

    .line 27
    return-void
.end method
