.class Lcom/meizu/server/SocketService$1;
.super Ljava/lang/Thread;
.source "SocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/SocketService;->connect2Sdcard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/SocketService;

.field final synthetic val$szCmd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/server/SocketService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/server/SocketService;
    .param p2, "val$szCmd"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    iput-object p2, p0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 26
    const/16 v17, 0x0

    .line 27
    .local v17, "try_count":I
    new-instance v16, Landroid/net/LocalSocket;

    invoke-direct/range {v16 .. v16}, Landroid/net/LocalSocket;-><init>()V

    .line 28
    .local v16, "socket":Landroid/net/LocalSocket;
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v19, "sdcard"

    .line 29
    sget-object v20, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 28
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .local v2, "address":Landroid/net/LocalSocketAddress;
    move/from16 v18, v17

    .line 30
    .end local v17    # "try_count":I
    .local v18, "try_count":I
    :goto_0
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "try_count":I
    .restart local v17    # "try_count":I
    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 32
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/server/SocketService$1;->val$szCmd:Ljava/lang/String;

    .line 43
    .local v6, "cmd":Ljava/lang/String;
    const/4 v13, 0x0

    .line 46
    .local v13, "ret":Ljava/lang/String;
    const/16 v19, 0xa

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 47
    const/16 v19, 0x1f4

    :try_start_1
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 48
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    .line 49
    .local v12, "out":Ljava/io/OutputStream;
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 51
    .local v11, "in":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 52
    const-string/jumbo v6, "close_prot_box"

    .line 56
    :cond_1
    const-string/jumbo v19, "UTF-8"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 57
    .local v5, "bytes":[B
    const/16 v19, 0x200

    move/from16 v0, v19

    new-array v4, v0, [B

    .line 58
    .local v4, "buf":[B
    invoke-virtual {v12, v5}, Ljava/io/OutputStream;->write([B)V

    .line 59
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 60
    const-string/jumbo v19, "timestamp"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_2

    .line 61
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 62
    .local v15, "size":I
    new-instance v14, Ljava/lang/String;

    const-string/jumbo v19, "UTF-8"

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v14, v4, v0, v15, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .local v14, "ret":Ljava/lang/String;
    move-object v13, v14

    .line 65
    .end local v4    # "buf":[B
    .end local v5    # "bytes":[B
    .end local v11    # "in":Ljava/io/InputStream;
    .end local v12    # "out":Ljava/io/OutputStream;
    .end local v13    # "ret":Ljava/lang/String;
    .end local v14    # "ret":Ljava/lang/String;
    .end local v15    # "size":I
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 69
    :goto_1
    const-string/jumbo v19, "timestamp"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_3

    .line 70
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v19, "timestamp"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 75
    :try_start_2
    const-string/jumbo v19, "SecurityCenter"

    const-string/jumbo v20, "send back!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/server/SocketService;->replyTo:Landroid/os/Messenger;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/server/SocketService$1;->this$0:Lcom/meizu/server/SocketService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/meizu/server/SocketService;->obtainMsg:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 25
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_3
    :goto_2
    return-void

    .line 34
    .end local v6    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 37
    .local v9, "e":Ljava/lang/Exception;
    const-wide/16 v20, 0x3e8

    :try_start_3
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    move/from16 v18, v17

    .end local v17    # "try_count":I
    .restart local v18    # "try_count":I
    goto/16 :goto_0

    .line 38
    .end local v18    # "try_count":I
    .restart local v17    # "try_count":I
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 77
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v6    # "cmd":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 78
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    goto :goto_1
.end method
