.class public final Levi;
.super Ljava/lang/Object;
.source "AppCommenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:I

.field private synthetic c:Lcom/wandoujia/p4/app/controller/AppCommenter;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/app/controller/AppCommenter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Levi;->c:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iput-object p2, p0, Levi;->a:Ljava/lang/String;

    iput p3, p0, Levi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Levi;->c:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->g:Landroid/content/Context;

    iget-object v1, p0, Levi;->a:Ljava/lang/String;

    iget v2, p0, Levi;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;Ljava/lang/String;J)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 149
    return-void
.end method
