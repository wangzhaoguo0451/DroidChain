.class final Lfaa;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "ALManager.java"


# instance fields
.field private synthetic a:Lezz;


# direct methods
.method constructor <init>(Lezz;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lfaa;->a:Lezz;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lfaa;->a:Lezz;

    invoke-virtual {v0}, Lezz;->b()V

    .line 99
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lfaa;->a:Lezz;

    invoke-virtual {v0}, Lezz;->b()V

    .line 104
    return-void
.end method
