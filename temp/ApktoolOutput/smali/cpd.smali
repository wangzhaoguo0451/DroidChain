.class public final Lcpd;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lcpt;


# instance fields
.field private synthetic a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter

    .prologue
    .line 1749
    iput-object p1, p0, Lcpd;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1752
    iget-object v0, p0, Lcpd;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;->a(Ljava/util/Map;)V

    .line 1753
    return-void
.end method
