.class public final Leiw;
.super Ljava/lang/Object;
.source "ButtonState.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Lcom/wandoujia/mvc/Action;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Leiw;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(IILcom/wandoujia/mvc/Action;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Leiw;-><init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;Z)V

    .line 93
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Lcom/wandoujia/mvc/Action;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Leiw;->a:I

    .line 29
    iput-object p2, p0, Leiw;->b:Ljava/lang/CharSequence;

    .line 30
    iput-object p3, p0, Leiw;->c:Lcom/wandoujia/mvc/Action;

    .line 31
    iput-boolean p4, p0, Leiw;->d:Z

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Leiw;->e:I

    .line 33
    return-void
.end method
