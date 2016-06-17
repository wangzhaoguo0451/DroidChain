.class public final Lgdd;
.super Ljava/lang/Object;
.source "EasterEggsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lgdd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lgdd;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/ClipboardUtil;->copyText(Ljava/lang/String;)V

    .line 202
    return-void
.end method
