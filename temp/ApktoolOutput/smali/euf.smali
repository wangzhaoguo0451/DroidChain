.class public abstract Leuf;
.super Leun;
.source "BaseCardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/wandoujia/mvc/BaseModel;",
        ">",
        "Leun",
        "<TM;>;"
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Leuf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leuf;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Leun;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/wandoujia/mvc/BaseController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wandoujia/mvc/BaseController;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/wandoujia/mvc/BaseView;"
        }
    .end annotation
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TM;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Leun;->a(Ljava/util/List;)V

    .line 71
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Leuf;->b:Ljava/lang/String;

    const-string v1, "set data : list is null or empty"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v1, Leuf;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "set data : model class is "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c000c

    .line 83
    instance-of v0, p2, Lcom/wandoujia/mvc/BaseView;

    if-eqz v0, :cond_2

    .line 84
    check-cast p2, Lcom/wandoujia/mvc/BaseView;

    .line 85
    invoke-interface {p2}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseController;

    move-object v3, v1

    move-object v2, v0

    .line 102
    :goto_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v1, Leuf;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "get view position \uff1a"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " model : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Leuf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " controller : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Leuf;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/mvc/BaseModel;

    instance-of v1, v2, Lcom/wandoujia/mvc/Unbindable;

    if-eqz v1, :cond_1

    move-object v1, v2

    check-cast v1, Lcom/wandoujia/mvc/Unbindable;

    invoke-interface {v1}, Lcom/wandoujia/mvc/Unbindable;->unbind()V

    :cond_1
    invoke-interface {v2, p2, v0}, Lcom/wandoujia/mvc/BaseController;->bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V

    .line 110
    invoke-virtual {p0, p1}, Leuf;->getItem(I)Ljava/lang/Object;

    .line 111
    :goto_1
    return-object v3

    .line 88
    :cond_2
    invoke-virtual {p0, p1}, Leuf;->getItem(I)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Leuf;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/mvc/BaseView;

    move-result-object p2

    .line 90
    if-nez p2, :cond_3

    .line 91
    const/4 v3, 0x0

    goto :goto_1

    .line 93
    :cond_3
    invoke-interface {p2}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v0

    .line 94
    invoke-virtual {p0, p1}, Leuf;->getItem(I)Ljava/lang/Object;

    invoke-virtual {p0}, Leuf;->a()Lcom/wandoujia/mvc/BaseController;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v3, v0

    goto :goto_0
.end method
