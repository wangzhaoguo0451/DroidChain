.class final Lebg;
.super Ljava/lang/Object;
.source "FolderMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lebb;


# direct methods
.method constructor <init>(Lebb;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lebg;->a:Lebb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 337
    const-string v0, "folder_gift_list"

    iget-object v1, p0, Lebg;->a:Lebb;

    invoke-static {v1}, Lebb;->a(Lebb;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    return-void
.end method
