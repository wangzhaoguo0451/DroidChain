.class public final Leei;
.super Ljava/lang/Object;
.source "OpenAppAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Leei;->a:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    iget-object v0, p0, Leei;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Leei;->a:Ljava/lang/String;

    invoke-static {v0}, Lehf;->b(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Leei;->a:Ljava/lang/String;

    new-instance v1, Leej;

    invoke-direct {v1}, Leej;-><init>()V

    invoke-static {v0, v1}, Leeu;->a(Ljava/lang/String;Leey;)V

    .line 45
    return-void
.end method
