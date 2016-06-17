.class public final Levh;
.super Ljava/lang/Object;
.source "AppCommenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/wandoujia/p4/app/controller/AppCommenter;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/app/controller/AppCommenter;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Levh;->c:Lcom/wandoujia/p4/app/controller/AppCommenter;

    const v0, 0x7f0e017c

    iput v0, p0, Levh;->a:I

    iput p2, p0, Levh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Levh;->c:Lcom/wandoujia/p4/app/controller/AppCommenter;

    iget-object v0, v0, Lcom/wandoujia/p4/app/controller/AppCommenter;->g:Landroid/content/Context;

    iget v1, p0, Levh;->a:I

    iget v2, p0, Levh;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ldxa;->a(Landroid/content/Context;IJ)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 139
    return-void
.end method
